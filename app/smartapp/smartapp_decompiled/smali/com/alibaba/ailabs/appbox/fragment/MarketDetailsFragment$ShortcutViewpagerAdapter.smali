.class public Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MarketDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutViewpagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V
    .locals 0

    .line 704
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 737
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->views:Ljava/util/List;

    return-void
.end method

.method private initPageView(Landroid/view/View;)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 741
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;Landroid/view/View;)V

    .line 742
    iget-object p1, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;->itemRootView:Landroid/view/View;

    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_app_detail_shotcut:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;->ivBg:Landroid/widget/ImageView;

    .line 743
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AdapterUtils;->isS4A02(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 744
    iget-object p1, v0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;->ivBg:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 746
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->views:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 732
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$1400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$1400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 721
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$layout;->item_vp_app_detail_shotcut:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 722
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 723
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->initPageView(Landroid/view/View;)V

    .line 725
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$1400(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter;->views:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;

    iget-object p2, p2, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$ShortcutViewpagerAdapter$ViewHolder;->ivBg:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

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
