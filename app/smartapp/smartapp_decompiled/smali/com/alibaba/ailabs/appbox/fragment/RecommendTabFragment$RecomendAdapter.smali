.class Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecommendTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecomendAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field guessStartPos:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

.field typeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)V
    .locals 1

    .line 556
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->typeMap:Ljava/util/HashMap;

    .line 557
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getType(I)Ljava/lang/Integer;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Z

    move-result v0

    const/16 v1, 0x2b08

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x2711

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    return-object v1

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getPageType()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    .line 695
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "market_billboard_two"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "market_billboard"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v4, "market_op"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "application_recommend"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v4, "market_recommend"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "market_billboard_three"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v8, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 707
    :cond_3
    iput p1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->guessStartPos:I

    return-object v1

    :cond_4
    const/16 p1, 0x32d1

    .line 705
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const/16 p1, 0x32e9

    .line 703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 p1, 0x2b05

    .line 701
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 p1, 0x2ef7

    .line 699
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    const/16 p1, 0x2eee

    .line 697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x70c37965 -> :sswitch_5
        -0x404b7b87 -> :sswitch_4
        -0x3f2f5373 -> :sswitch_3
        -0x37a85b3c -> :sswitch_2
        -0xeae5504 -> :sswitch_1
        0x4a78be89 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    const/4 v0, 0x0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 658
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v0

    :cond_0
    return v1

    :catch_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemViewType pos == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHasGuessLike == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecommendTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->typeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->typeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 678
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->getType(I)Ljava/lang/Integer;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->typeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 610
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x2b08

    const-string v2, "bind data Exception == "

    const-string v3, "RecommendTabFragment"

    if-ne v1, v0, :cond_1

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 616
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    .line 617
    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;->bindData(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 619
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 625
    :cond_1
    :try_start_1
    check-cast p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;)Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendTabBean;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;->bindData(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 627
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/16 v0, 0x2711

    const/4 v1, 0x0

    if-eq p2, v0, :cond_7

    const/16 v0, 0x2b05

    if-eq p2, v0, :cond_6

    const/16 v0, 0x2b08

    if-eq p2, v0, :cond_5

    const/16 v0, 0x2b69

    if-eq p2, v0, :cond_4

    const/16 v0, 0x2eee

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2ef7

    if-eq p2, v0, :cond_2

    const/16 v0, 0x32d1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32e9

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    move-object v0, p1

    goto/16 :goto_0

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_3_3:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 585
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEach;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEach;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_1_9:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 589
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_2_3:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 577
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend2Col_3ItemEach;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend2Col_3ItemEach;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_1_4:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 573
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_1_3_video:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 593
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_140_176_one:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 601
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendYouLike;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 580
    :cond_6
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_header_1_3_video:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 581
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 596
    :cond_7
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/alibaba/ailabs/appbox/R$layout;->item_market3_recommend_item_title_guess:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 597
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$MyRvViewHolder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$RecomendAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;

    invoke-direct {v0, v1, p1}, Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment$MyRvViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/RecommendTabFragment;Landroid/view/View;)V

    .line 604
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateViewHolder:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Done!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->logTimeCost(Ljava/lang/String;)V

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 562
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
