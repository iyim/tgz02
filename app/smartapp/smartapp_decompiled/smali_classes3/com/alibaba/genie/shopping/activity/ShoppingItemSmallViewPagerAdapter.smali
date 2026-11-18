.class public Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ShoppingItemSmallViewPagerAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private img_video_play_icon:Landroid/widget/ImageView;

.field private item_img:Landroid/widget/ImageView;

.field private mItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    .line 36
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->item_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 140
    check-cast p3, Landroid/view/View;

    .line 141
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 47
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->shopping_detail_img_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->item_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->item_img:Landroid/widget/ImageView;

    .line 49
    sget v1, Lcom/alibaba/ailabs/genie/shopping/R$id;->img_video_play_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->img_video_play_icon:Landroid/widget/ImageView;

    .line 52
    new-instance v1, Lcom/bumptech/glide/load/MultiTransformation;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/bumptech/glide/load/Transformation;

    new-instance v4, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;

    sget-object v5, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;->ALL:Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v5}, Lcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform;-><init>(IILcom/alibaba/genie/shopping/PageRecyclerView/view/GlideRoundTransform$CornerType;)V

    aput-object v4, v3, v7

    invoke-direct {v1, v3}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    .line 54
    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_detail_icon:I

    .line 55
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/shopping/R$mipmap;->default_shopping_detail_icon:I

    .line 56
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    .line 57
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 58
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 59
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    if-eqz v3, :cond_3

    .line 62
    iget v4, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    if-nez v4, :cond_2

    .line 63
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->img_video_play_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->item_img:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;

    .line 75
    iget v4, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->imgUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v3, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->imgUrl:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    new-instance v2, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;

    invoke-direct {v2, p0, p2, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$2;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 90
    :cond_2
    iget p2, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    if-ne p2, v2, :cond_3

    .line 91
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object v2, v3, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->videoThumbnailURL:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    new-instance v1, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$3;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->item_img:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$3;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 98
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->img_video_play_icon:Landroid/widget/ImageView;

    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    new-instance p2, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;

    invoke-direct {p2, p0, v3}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter$4;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_3
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->mItemInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/activity/ShoppingItemSmallViewPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
