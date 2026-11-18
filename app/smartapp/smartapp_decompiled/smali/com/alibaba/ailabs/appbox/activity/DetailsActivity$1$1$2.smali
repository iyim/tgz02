.class Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$202(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Z)Z

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finishLoadingView()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u67e5\u627e\u5e94\u7528\u51fa\u4e86\u70b9\u95ee\u9898\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1$2;->this$2:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;->this$1:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->finish()V

    return-void
.end method
