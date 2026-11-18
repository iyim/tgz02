.class public Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MarketServerService.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "market.ipc"

.field private static final TAG:Ljava/lang/String; = "MarketServerService-log"

.field static sInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private downloadFile(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getClientCommu(Landroid/os/Bundle;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "download_callback"

    const-string v2, "back_cmd_value"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2712

    .line 100
    invoke-interface {p1, v1, v0}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;
    .locals 2

    const-string v0, "MarketServerService-log"

    const-string v1, "getInstance call ... "

    .line 36
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->sInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->sInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->sInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->sInstance:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "market.ipc"

    return-object v0
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommu call ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getClientCommu(Landroid/os/Bundle;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketServerService-log"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getInstance()Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uninstall_callback"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->uninstallInRemoteByPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_1
    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@@@"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v6, v2, v3

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v7, v0, v1

    .line 81
    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getInstance()Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v10, 0x2713

    const-string v9, "install_callback"

    move-object v8, p2

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->installInRemoteByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)V

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-static {}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getInstance()Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "download_callback"

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->addToDownloadTask(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_3
    invoke-static {}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getClientCommu(Landroid/os/Bundle;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "data_applist"

    .line 63
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2711

    .line 64
    invoke-interface {v1, v0, v2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
