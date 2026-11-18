.class Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;
.super Ljava/lang/Object;
.source "MarketServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 26
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->access$002(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;Z)Z

    .line 27
    check-cast p2, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService$DownloadBinder;->getService()Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->access$102(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    const-string p1, "MarketServiceManager"

    const-string p2, " - onServiceConnected"

    .line 29
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->access$100(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;)Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->getRandomNumber()I

    move-result p2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - getRandomNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;->this$0:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->access$002(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;Z)Z

    const-string p1, "MarketServiceManager"

    const-string v0, " - onServiceDisconnected"

    .line 37
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
