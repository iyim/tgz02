.class public Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "RecommendHeader1Banner_4Item.java"


# instance fields
.field private mBannerIcon:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

.field private mGenieSpeachTip:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 80
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_recommend_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mTitle:Landroid/widget/TextView;

    .line 81
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_recommend_item_genie_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_623_322_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mBannerIcon:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->itemViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->itemViews:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 87
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sub_item_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 5

    .line 38
    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getModuleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getModuleSubTitle()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getModuleSubTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mGenieSpeachTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mBannerIcon:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    .line 53
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->mBannerIcon:Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    new-instance v3, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/appbox/view/RounderImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendHeader1Banner_4Item;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;->getModuleList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendMarketModule;->getDataList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindData(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
