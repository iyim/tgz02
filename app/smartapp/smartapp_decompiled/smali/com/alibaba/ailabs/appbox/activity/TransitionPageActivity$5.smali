.class Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;
.super Ljava/lang/Object;
.source "TransitionPageActivity.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->downloadAndInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->access$900(Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;)Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/appbox/view/RoundedProgressBar;->setProgress(I)V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadAndInstall onInstallFailed msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TransitionPageActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadAndInstall onInstallSuccess pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",retCode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TransitionPageActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity$5;->this$0:Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/TransitionPageActivity;->finish()V

    return-void
.end method
