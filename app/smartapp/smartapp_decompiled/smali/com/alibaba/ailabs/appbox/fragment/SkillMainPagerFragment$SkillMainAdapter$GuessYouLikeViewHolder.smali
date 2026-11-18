.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuessYouLikeViewHolder"
.end annotation


# instance fields
.field skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    .line 428
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 429
    new-instance p1, Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$GuessYouLikeViewHolder;->skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    return-void
.end method
