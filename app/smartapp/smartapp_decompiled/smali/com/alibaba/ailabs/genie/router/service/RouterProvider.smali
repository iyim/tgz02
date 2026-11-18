.class public Lcom/alibaba/ailabs/genie/router/service/RouterProvider;
.super Lcom/alibaba/ailabs/ipc/server/MultiProvider;
.source "RouterProvider.java"


# static fields
.field public static final HOST:Ljava/lang/String; = "com.alibaba.ailabs.genie.router.ipc.service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/server/MultiProvider;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onInit()V
    .locals 3

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/router/service/RouterProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getInstance(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    move-result-object v1

    const-string v2, "com.alibaba.ailabs.genie.router.ipc.service"

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object v1

    .line 24
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onInterceptor(ILjava/lang/String;)Z
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInterceptor, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; serverName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRouter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method
