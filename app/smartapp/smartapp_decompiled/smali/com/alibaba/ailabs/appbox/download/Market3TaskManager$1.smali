.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstallOpen(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;ZLcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

.field final synthetic val$openUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$openUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onDownloadProgress(I)V

    :cond_0
    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$openUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "Market3TaskManager-tag"

    const-string/jumbo v1, "\u62b1\u6b49\uff0c\u6682\u672a\u627e\u5230\u8be5\u5e94\u7528"

    .line 77
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$1;->val$listener:Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallSuccess(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
