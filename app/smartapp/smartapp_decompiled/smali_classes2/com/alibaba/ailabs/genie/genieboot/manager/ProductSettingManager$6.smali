.class Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;
.super Ljava/lang/Object;
.source "ProductSettingManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->installApk(Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

.field final synthetic val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 1

    .line 251
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->isTimeOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInstallFailed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BootApp"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->getInstance()Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/LoadingWindowManager;->dismissLoadingView()V

    .line 273
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$700(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startApkService()V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 1

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onInstallSuccess"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BootApp"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 259
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 265
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->this$0:Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager$6;->val$nowAppinfo:Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;->access$600(Lcom/alibaba/ailabs/genie/genieboot/manager/ProductSettingManager;Lcom/alibaba/ailabs/genie/genieboot/bean/AppInfo;)V

    :cond_0
    return-void
.end method
