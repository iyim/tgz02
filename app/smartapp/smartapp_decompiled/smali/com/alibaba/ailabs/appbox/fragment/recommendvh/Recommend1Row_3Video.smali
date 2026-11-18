.class public Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;
.super Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;
.source "Recommend1Row_3Video.java"


# instance fields
.field private mIvPics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/appbox/view/RounderImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mTextOnPics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/RecommendBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mIvPics:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mPlayBtns:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mTextOnPics:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 4

    .line 51
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tv_recommend_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mTitle:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->itemViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->itemViews:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item_1_3_video_item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mIvPics:Ljava/util/ArrayList;

    sget v3, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_301_257_bg:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/appbox/view/RounderImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mPlayBtns:Ljava/util/ArrayList;

    sget v3, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_play:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mTextOnPics:Ljava/util/ArrayList;

    sget v3, Lcom/alibaba/ailabs/appbox/R$id;->tv_market_skill_speack:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {v2, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;-><init>(Landroid/view/View;)V

    .line 63
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->itemViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindData(Ljava/lang/Object;)V
    .locals 4

    .line 40
    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/recommend/RecommendItemTypeBean;

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mTitle:Landroid/widget/TextView;

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
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

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

    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBeanResponse;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mIvPics:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 44
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mPlayBtns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->mTextOnPics:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/Recommend1Row_3Video;->itemViews:Ljava/util/ArrayList;

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
