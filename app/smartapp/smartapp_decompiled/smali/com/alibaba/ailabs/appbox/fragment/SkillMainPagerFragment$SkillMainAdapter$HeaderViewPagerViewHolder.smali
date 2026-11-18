.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewPagerViewHolder"
.end annotation


# instance fields
.field magic_ind_skill_header:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

.field rl_vp_skill_main_header:Landroid/widget/RelativeLayout;

.field skill_banner_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

.field vp_skill_main_header:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    .line 379
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 380
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->vp_skill_main_header:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->vp_skill_main_header:Landroid/support/v4/view/ViewPager;

    .line 381
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->magic_ind_skill_header:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->magic_ind_skill_header:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    .line 382
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->skill_banner_circle_indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->skill_banner_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    .line 383
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->rl_vp_skill_main_header:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$HeaderViewPagerViewHolder;->rl_vp_skill_main_header:Landroid/widget/RelativeLayout;

    return-void
.end method
