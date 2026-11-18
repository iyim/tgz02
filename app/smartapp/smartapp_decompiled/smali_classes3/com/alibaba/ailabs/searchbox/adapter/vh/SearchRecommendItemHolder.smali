.class public Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;
.super Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;
.source "SearchRecommendItemHolder.java"


# instance fields
.field private bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

.field private mIconView:Landroid/widget/ImageView;

.field private mIconViewTag:Landroid/view/View;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/AppSearchBaseViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->initView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    .line 69
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mIconView:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_cloud_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mIconViewTag:Landroid/view/View;

    .line 71
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_market3_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mTitle:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->rl_root_1_6:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mRoot:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V
    .locals 2

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->bean:Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;

    .line 43
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mIconView:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/base/util/AppTypeUtil;->isCloudAppUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mIconViewTag:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mIconViewTag:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder$1;-><init>(Lcom/alibaba/ailabs/searchbox/adapter/vh/SearchRecommendItemHolder;Lcom/alibaba/ailabs/searchbox/model/AppSearchItemBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
