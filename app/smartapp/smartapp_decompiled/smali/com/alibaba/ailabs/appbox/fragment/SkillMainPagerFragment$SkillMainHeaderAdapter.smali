.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkillMainHeaderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 687
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 650
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_header_subitem:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 651
    sget v1, Lcom/alibaba/ailabs/appbox/R$id;->iv_pic_vp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 652
    new-instance v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    if-nez v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    new-instance v3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    new-instance v4, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lcom/alibaba/ailabs/appbox/utils/GlideRoundTransform;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/request/RequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->access$202(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/request/RequestOptions;

    .line 668
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v3, v3, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 669
    invoke-virtual {v3}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;->getImage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    .line 670
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 671
    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 673
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
