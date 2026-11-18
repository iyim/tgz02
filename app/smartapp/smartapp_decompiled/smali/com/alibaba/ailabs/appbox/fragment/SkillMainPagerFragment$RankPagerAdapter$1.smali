.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;
.super Ljava/lang/Object;
.source "SkillMainPagerFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/view/SkillItemView$OnTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

.field final synthetic val$finalI1:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;II)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->val$position:I

    iput p3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->val$finalI1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTitleClick()V
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;->getContent()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillHotAndNewest;->getContent()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$RankPagerAdapter$1;->val$finalI1:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->openSkillByCmd(Ljava/lang/String;)V

    return-void
.end method
