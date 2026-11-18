.class Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "SkillTabPagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;->onBindViewHolder(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;I)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;->skills:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment$SkillTabRecycleViewAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getItemId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openSkillDetail(Ljava/lang/String;)V

    return-void
.end method
