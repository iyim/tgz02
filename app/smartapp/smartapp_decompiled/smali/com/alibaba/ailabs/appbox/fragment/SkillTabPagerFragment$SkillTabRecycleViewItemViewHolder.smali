.class Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillTabPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SkillTabRecycleViewItemViewHolder"
.end annotation


# instance fields
.field skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;Landroid/view/View;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewItemViewHolder;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    .line 188
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 189
    new-instance p1, Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    invoke-direct {p1, p2}, Lcom/alibaba/ailabs/appbox/view/SkillItemView;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewItemViewHolder;->skillItemView:Lcom/alibaba/ailabs/appbox/view/SkillItemView;

    return-void
.end method
