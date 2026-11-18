.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;
.super Ljava/lang/Object;
.source "SkillMainPagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;I)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 581
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillClassroom()Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;->getContent()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$ClassRoomAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openVideoByYouku(Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;)V

    return-void
.end method
