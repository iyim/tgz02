.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$1;
.super Landroid/os/Handler;
.source "MarketServerTaskMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Landroid/os/Looper;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$1;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MarketTaskMgr-tag"

    const-string/jumbo v0, "true to kill process MSG_KILLPROCESS..."

    .line 61
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;->release()V

    .line 63
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    return-void
.end method
