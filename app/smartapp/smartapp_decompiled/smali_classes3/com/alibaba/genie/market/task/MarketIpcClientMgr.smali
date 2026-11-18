.class public Lcom/alibaba/genie/market/task/MarketIpcClientMgr;
.super Ljava/lang/Object;
.source "MarketIpcClientMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MarketIpcClientMgr-l"

.field protected static marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

.field private static final ourInstance:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    invoke-direct {v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;-><init>()V

    sput-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->ourInstance:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alibaba/genie/market/task/MarketIpcClient;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/market/task/MarketIpcClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    .line 29
    :cond_0
    sget-object p0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->ourInstance:Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    return-object p0
.end method


# virtual methods
.method public download(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V
    .locals 2

    .line 47
    invoke-static {}, Lcom/alibaba/genie/market/task/LinstenerMgr;->getInstance()Lcom/alibaba/genie/market/task/LinstenerMgr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/genie/market/task/LinstenerMgr;->putDownAndInstallListener(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V

    .line 49
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    new-instance v1, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$2;-><init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketDownloadListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->downloadFile(Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    return-void
.end method

.method public getData(Lcom/alibaba/genie/market/task/MarketApplistDataListener;)V
    .locals 2

    .line 37
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    new-instance v1, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$1;-><init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketApplistDataListener;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->getData(Lcom/alibaba/genie/market/task/CallBackInClient;)V

    return-void
.end method

.method public installApk(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketInstallListener;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    new-instance v1, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$3;

    invoke-direct {v1, p0, p3}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$3;-><init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketInstallListener;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->installApk(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    return-void
.end method

.method public setOnServerDisconnectListener(Lcom/alibaba/genie/market/task/OnServerDisconnectListener;)V
    .locals 1

    .line 143
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->setDisconnectListener(Lcom/alibaba/genie/market/task/OnServerDisconnectListener;)V

    return-void
.end method

.method public uninstallApk(Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V
    .locals 2

    .line 115
    sget-object v0, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->marketIpcClient:Lcom/alibaba/genie/market/task/MarketIpcClient;

    new-instance v1, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr$4;-><init>(Lcom/alibaba/genie/market/task/MarketIpcClientMgr;Lcom/alibaba/genie/market/task/MarketApkDeleteListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/genie/market/task/MarketIpcClient;->uninstallApk(Ljava/lang/String;Lcom/alibaba/genie/market/task/CallBackInClient;)V

    return-void
.end method
