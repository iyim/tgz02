.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkillMainPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClassroomSubItemViewHolder"
.end annotation


# instance fields
.field iv_classroom_subitem_bg:Landroid/widget/ImageView;

.field iv_play:Landroid/widget/ImageView;

.field rl_item_applist:Landroid/widget/RelativeLayout;

.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

.field tv_classroom_subitem_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;Landroid/view/View;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

    .line 603
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 604
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->iv_classroom_subitem_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->iv_classroom_subitem_bg:Landroid/widget/ImageView;

    .line 605
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->tv_classroom_subitem_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->tv_classroom_subitem_title:Landroid/widget/TextView;

    .line 606
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->iv_play:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->iv_play:Landroid/widget/ImageView;

    .line 607
    sget p1, Lcom/alibaba/ailabs/appbox/R$id;->rl_item_applist:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$ClassroomSubItemViewHolder;->rl_item_applist:Landroid/widget/RelativeLayout;

    return-void
.end method
