.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClassroomViewHolder"
.end annotation


# instance fields
.field rv_skill_classroom:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;Landroid/view/View;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    .line 412
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 413
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->rv_skill_classroom:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$ClassroomViewHolder;->rv_skill_classroom:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method
