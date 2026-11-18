.class public Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;
.super Lcom/alibaba/ailabs/appbox/activity/BaseActivity;
.source "GenieSkillRankActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field ivBack:Landroid/widget/ImageView;

.field ivHome:Landroid/widget/ImageView;

.field tabLayout:Landroid/support/design/widget/TabLayout;

.field titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->fragments:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->titles:Ljava/util/List;

    return-void
.end method

.method private addFragment(I)V
    .locals 4

    .line 80
    new-instance v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;-><init>()V

    .line 81
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x1

    const-string v3, "cardId"

    .line 82
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cateId"

    .line 83
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cateName"

    const-string v3, ""

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "themeId"

    .line 85
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->fragments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initView()V
    .locals 1

    .line 91
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->ivBack:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->ivHome:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->ivHome:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->tbl_header:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    .line 96
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->vp_skill_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 103
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_back:I

    if-ne p1, v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/alibaba/ailabs/appbox/R$id;->iv_page_home:I

    if-ne p1, v0, :cond_1

    .line 106
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->goHome(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/alibaba/ailabs/appbox/R$layout;->activity_skill_main:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->initView()V

    .line 41
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->titles:Ljava/util/List;

    const-string/jumbo v0, "\u672c\u5468\u6700\u65b0"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->titles:Ljava/util/List;

    const-string/jumbo v0, "\u672c\u6708\u6700\u706b"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->addFragment(I)V

    const/4 v0, 0x2

    .line 47
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->addFragment(I)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 52
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    return-void
.end method
