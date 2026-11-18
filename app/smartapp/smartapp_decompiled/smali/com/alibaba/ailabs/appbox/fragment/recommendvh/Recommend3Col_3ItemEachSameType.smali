.class public Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "Recommend3Col_3ItemEachSameType.java"


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 8

    .line 38
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_recommend_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->mTitle:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->itemViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->itemViews:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item_2_3_page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v2, :cond_1

    .line 45
    new-instance v5, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market_recommend_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    .line 46
    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 4

    .line 30
    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getModuleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend3Col_3ItemEachSameType;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v1, v3}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
