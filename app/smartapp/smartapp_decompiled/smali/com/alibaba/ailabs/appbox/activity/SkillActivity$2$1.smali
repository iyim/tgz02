.class Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;
.super Ljava/lang/Object;
.source "SkillActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->mainpage:Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity$2;->this$0:Lcom/alibaba/ailabs/appbox/activity/SkillActivity;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/activity/SkillActivity;->likes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/SkillMainPagerFragment;->setLikes(Ljava/util/List;)V

    return-void
.end method
