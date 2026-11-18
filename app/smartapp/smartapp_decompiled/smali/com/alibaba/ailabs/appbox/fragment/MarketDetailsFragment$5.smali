.class Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;
.super Ljava/lang/Object;
.source "MarketDetailsFragment.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->getListener()Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;)V
    .locals 0

    .line 461
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$800(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;I)V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 0

    .line 481
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 484
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Z)V

    .line 485
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p1

    const-string/jumbo p2, "\u5b89\u88c5\u51fa\u4e86\u70b9\u95ee\u9898\uff0c\u60a8\u53ef\u4ee5\u518d\u6b21\u5c1d\u8bd5\u3002"

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 0

    .line 473
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketDetailsFragment;Z)V

    return-void
.end method
