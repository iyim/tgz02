.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RankViewHolder"
.end annotation


# instance fields
.field magic_ind_rank:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

.field rl_item_genie_skill_rank:Landroid/widget/RelativeLayout;

.field skill_rank_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

.field tv_rankl_all:Landroid/widget/TextView;

.field tv_skill_rank_title2:Landroid/widget/TextView;

.field tv_skill_rank_title3:Landroid/widget/TextView;

.field vp_skill_rank:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    .line 397
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 398
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->rl_item_genie_skill_rank:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->rl_item_genie_skill_rank:Landroid/widget/RelativeLayout;

    .line 399
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->vp_skill_rank:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->vp_skill_rank:Landroid/support/v4/view/ViewPager;

    .line 400
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_rank_title2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_skill_rank_title2:Landroid/widget/TextView;

    .line 401
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->tv_skill_rank_title3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_skill_rank_title3:Landroid/widget/TextView;

    .line 402
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->tv_rankl_all:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->tv_rankl_all:Landroid/widget/TextView;

    .line 403
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->magic_ind_rank:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->magic_ind_rank:Lcom/alibaba/ailabs/appbox/view/indicator/MagicIndicator;

    .line 404
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->skill_rank_circle_indicator:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$RankViewHolder;->skill_rank_circle_indicator:Lcom/alibaba/ailabs/appbox/view/crindcator/CircleIndicator;

    return-void
.end method
