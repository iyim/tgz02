.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MarketServerTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->uninstallInRemoteByPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

.field final synthetic val$fromClientBundle:Landroid/os/Bundle;

.field final synthetic val$keyToClientBundle:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$fromClientBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$keyToClientBundle:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p1, 0x2714

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "MarketApkDeleteListener"

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 500
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$pkgName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "onUninstallSuccess"

    invoke-static {v2, p2, v1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 501
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$keyToClientBundle:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 503
    :cond_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$pkgName:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const-string p2, "onUninstallFailed"

    invoke-static {v2, p2, v1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 504
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->val$keyToClientBundle:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 507
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$5;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    return-void
.end method
