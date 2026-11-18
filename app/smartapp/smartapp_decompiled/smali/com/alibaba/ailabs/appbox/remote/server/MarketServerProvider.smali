.class public Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;
.super Lcom/alibaba/ailabs/ipc/server/MultiProvider;
.source "MarketServerProvider.java"


# static fields
.field public static final HOST:Ljava/lang/String; = "com.alibaba.ailabs.genie.market.ipc"

.field private static final TAG:Ljava/lang/String; = "MarketServerProvider-tag"

.field static router:Lcom/alibaba/ailabs/ipc/server/MultiRouter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static release()V
    .locals 2

    .line 55
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;->router:Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->unregisterRemoteServer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onInit()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getInstance(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    move-result-object v1

    const-string v2, "com.alibaba.ailabs.genie.market.ipc"

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object v1

    sput-object v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;->router:Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    .line 35
    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;->router:Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;-><init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method
