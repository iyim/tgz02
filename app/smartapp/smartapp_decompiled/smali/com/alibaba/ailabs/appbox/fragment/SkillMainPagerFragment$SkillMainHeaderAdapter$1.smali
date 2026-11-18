.class Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;
.super Ljava/lang/Object;
.source "SkillMainPagerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;I)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 659
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "genie://com.alibaba.ailabs.genie.launcher/webviewPage?pkg=com.alibaba.ailabs.genie.market&h5_url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    .line 660
    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skil_header_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->this$1:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter;->this$0:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->data:Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getBanner()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment$SkillMainHeaderAdapter$1;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;->getImage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7f51\u9875"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->openBySchemaOrPkgName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
