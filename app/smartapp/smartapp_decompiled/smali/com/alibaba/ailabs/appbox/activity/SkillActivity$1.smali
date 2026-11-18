.class Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;
.super Ljava/lang/Object;
.source "SkillActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "--SkillActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "--SkillActivity"

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->finishLoadingView()V

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/SkillActivity;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->mainpage:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->setData(Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;)V

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->fragments:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->mainpage:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->titles:Ljava/util/List;

    const-string/jumbo v1, "\u63a8\u8350"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->getCate()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    new-instance v1, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;

    invoke-direct {v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillTabPagerFragment;-><init>()V

    .line 83
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "cardId"

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cateId"

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;->getCateId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cateName"

    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "themeId"

    const/4 v4, 0x2

    .line 87
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->fragments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->titles:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->tabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
