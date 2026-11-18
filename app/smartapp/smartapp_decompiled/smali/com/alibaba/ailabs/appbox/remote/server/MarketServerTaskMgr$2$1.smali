.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;
.super Ljava/lang/Object;
.source "MarketServerTaskMgr.java"

# interfaces
.implements Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallExecption(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x5

    .line 141
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "\u5b89\u88c5\u5f02\u5e38"

    aput-object v2, v0, v1

    const/16 v1, -0x3ea

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "install throw execption -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "MarketInstallListener"

    const-string v2, "onInstallFailed"

    .line 141
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$keyToClientBundle:Ljava/lang/String;

    const/16 v3, 0x2713

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->deleteSingleFile(Ljava/lang/String;)Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installInRemoteByPath onInstallExecption code == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msg == "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    return-void
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "\u5b89\u88c5\u5931\u8d25"

    aput-object v2, v0, v1

    .line 133
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MarketInstallListener"

    const-string v2, "onInstallFailed"

    .line 132
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$keyToClientBundle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget v3, v3, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$methToClient:I

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installInRemoteByPath onInstallFailed code == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", msg == "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x4

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$path:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "MarketInstallListener"

    const-string v2, "onInstallSuccess"

    .line 122
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object v2, v2, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$keyToClientBundle:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget v3, v3, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->val$methToClient:I

    invoke-static {v1, v2, v0, v3}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installInRemoteByPath onInstallSuccess packageName == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", code == "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$2;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    return-void
.end method
