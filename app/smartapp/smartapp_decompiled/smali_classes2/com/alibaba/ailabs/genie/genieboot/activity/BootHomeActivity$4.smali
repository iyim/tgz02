.class Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;
.super Ljava/lang/Object;
.source "BootHomeActivity.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->downLoadAndInstallApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

.field final synthetic val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$800(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BootHomeActivity"

    const-string v0, "onDownloadProgress: BootHomeActivity isDestroyed!"

    .line 372
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 2

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFailed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BootHomeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p1, -0x186d3

    if-ne p2, p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$900(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 403
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$902(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Z)Z

    .line 404
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$600(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 406
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$000(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)V

    :goto_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInstallSuccess"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BootHomeActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$800(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-eqz p1, :cond_1

    .line 388
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->this$0:Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity$4;->val$appInfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;->access$700(Lcom/alibaba/ailabs/genie/genieboot/activity/BootHomeActivity;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "onInstallSuccess: BootHomeActivity isDestroyed!"

    .line 383
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
