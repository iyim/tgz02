.class public Lcom/alibaba/genie/market/task/MarketIpcClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "MarketIpcClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/conn/ISvrConn;


# static fields
.field public static final HOST:Ljava/lang/String; = "com.alibaba.ailabs.genie.market.ipc"

.field public static final SERVICE_NAME:Ljava/lang/String; = "market.ipc"


# instance fields
.field private disconnectListeners:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onServerDisconnect()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/genie/market/task/MarketIpcClient;->disconnectListeners:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    invoke-interface {v0}, Lcom/alibaba/genie/market/task/OnServerDisconnectListener;->onServerDisconnect()V

    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V
    .locals 2

    .line 60
    new-instance v0, Lcom/alibaba/genie/market/task/MarketClientService;

    invoke-virtual {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/alibaba/genie/market/task/MarketClientService;-><init>(Landroid/content/Context;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    .line 64
    invoke-virtual {v0}, Lcom/alibaba/genie/market/task/MarketClientService;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0x2712

    .line 65
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public getData(Lcom/alibaba/genie/market/task/CallBackInClient;)V
    .locals 2

    .line 50
    new-instance v0, Lcom/alibaba/genie/market/task/MarketClientService;

    invoke-virtual {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/genie/market/task/MarketClientService;-><init>(Landroid/content/Context;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    .line 51
    invoke-virtual {v0}, Lcom/alibaba/genie/market/task/MarketClientService;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/16 v0, 0x2711

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public installApk(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V
    .locals 2

    .line 72
    new-instance v0, Lcom/alibaba/genie/market/task/MarketClientService;

    invoke-virtual {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/alibaba/genie/market/task/MarketClientService;-><init>(Landroid/content/Context;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    .line 77
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@@@"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/alibaba/genie/market/task/MarketClientService;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0x2713

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "com.alibaba.ailabs.genie.market.ipc"

    .line 42
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->setKeepConnection(Z)V

    const-string v1, "market.ipc"

    .line 44
    invoke-virtual {p1, v1, p0, v0}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    .line 45
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "onServerStatusChange"

    if-eqz p2, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->onServerDisconnect()V

    goto :goto_0

    .line 102
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and  ibinder is null ..."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->onServerDisconnect()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDisconnectListener(Lcom/alibaba/genie/market/task/OnServerDisconnectListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/genie/market/task/MarketIpcClient;->disconnectListeners:Lcom/alibaba/genie/market/task/OnServerDisconnectListener;

    return-void
.end method

.method public uninstallApk(Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V
    .locals 2

    .line 84
    new-instance v0, Lcom/alibaba/genie/market/task/MarketClientService;

    invoke-virtual {p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/alibaba/genie/market/task/MarketClientService;-><init>(Landroid/content/Context;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    .line 89
    invoke-virtual {v0}, Lcom/alibaba/genie/market/task/MarketClientService;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0x2714

    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
