.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;
.super Ljava/lang/Object;
.source "SkillMainPagerFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

.field final synthetic val$curPos:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;I)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;->val$curPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTitleClick()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->likes:Ljava/util/List;

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainAdapter$8;->val$curPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openSkillByCmd(Ljava/lang/String;)V

    return-void
.end method
