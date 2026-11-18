.class Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SkillActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
