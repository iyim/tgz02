.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;
.super Ljava/lang/Object;
.source "MarketServerTaskMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->installInRemoteByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

.field final synthetic val$fromClientBundle:Landroid/os/Bundle;

.field final synthetic val$keyToClientBundle:Ljava/lang/String;

.field final synthetic val$methToClient:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$fromClientBundle:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$keyToClientBundle:Ljava/lang/String;

    iput p6, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$methToClient:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$url:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, -0x3e9

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MarketInstallListener"

    const-string v2, "onInstallFailed"

    .line 109
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$keyToClientBundle:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$methToClient:I

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installInRemoteByPath file not exists ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->installApk(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    new-instance v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$2;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$2;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;)V

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/common/installunder9/InstallUnder9;->install(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V

    :goto_0
    return-void
.end method
