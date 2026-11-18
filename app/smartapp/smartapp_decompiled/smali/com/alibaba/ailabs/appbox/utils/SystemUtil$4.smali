.class final Lcom/alibaba/ailabs/appbox/utils/SystemUtil$4;
.super Ljava/lang/Object;
.source "SystemUtil.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketApkDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->unInstallApp(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$4;->val$callback:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstallFailed(Ljava/lang/String;I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$4;->val$callback:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    if-eqz v0, :cond_0

    .line 598
    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/market/task/MarketApkDeleteListener;->onUninstallFailed(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onUninstallSuccess(Ljava/lang/String;I)V
    .locals 3

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has uninstalled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxPackageManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "packagename"

    .line 587
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "retCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "uninstallAppFinish"

    const-string v2, "app_list_"

    .line 589
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 590
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$4;->val$callback:Lcom/alibaba/genie/market/task/MarketApkDeleteListener;

    if-eqz v0, :cond_0

    .line 591
    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/market/task/MarketApkDeleteListener;->onUninstallSuccess(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
