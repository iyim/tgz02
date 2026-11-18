.class Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GenieSkillRankActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/GenieSkillRankActivity;->titles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method
