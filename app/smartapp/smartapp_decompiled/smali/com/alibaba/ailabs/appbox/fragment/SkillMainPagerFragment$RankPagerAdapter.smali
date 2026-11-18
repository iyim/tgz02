.class public Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 541
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

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
    .locals 7

    .line 503
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$layout;->item_skill_main_rank_sub_item:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    .line 504
    new-array v2, v1, [Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skill_item_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->getIdByStringName(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 508
    new-instance v6, Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    invoke-direct {v6, v4}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;-><init>(Landroid/view/View;)V

    aput-object v6, v2, v3

    .line 510
    aget-object v4, v2, v3

    new-instance v6, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;

    invoke-direct {v6, p0, p2, v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;II)V

    invoke-virtual {v4, v6}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setTipsClickListener(Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;)V

    .line 516
    aget-object v4, v2, v3

    iget-object v6, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v6, v6, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;

    invoke-virtual {v6}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->getContent()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v4, v6}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->setData2View(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V

    .line 518
    aget-object v4, v2, v3

    iget-object v4, v4, Lcom/alibaba/ailabs/appbox/view/SkillItemView;->rootView:Landroid/view/View;

    new-instance v6, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$2;

    invoke-direct {v6, p0, p2, v3}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$2;-><init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;II)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v3, v5

    goto :goto_0

    .line 527
    :cond_0
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
