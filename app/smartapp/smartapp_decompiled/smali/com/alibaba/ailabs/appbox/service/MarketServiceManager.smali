.class public Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;
.super Ljava/lang/Object;
.source "MarketServiceManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MarketServiceManager"

.field private static final ourInstance:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private isBind:Z

.field private service:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->ourInstance:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->isBind:Z

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->service:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager$1;-><init>(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->conn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;Z)Z
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->isBind:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;)Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->service:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;)Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->service:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    return-object p1
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;
    .locals 1

    .line 44
    sget-object v0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->ourInstance:Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    return-object v0
.end method


# virtual methods
.method public bind()V
    .locals 4

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->isBind:Z

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "from"

    const-string v2, "MarketBroadcastReceiver"

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->service:Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/service/MarketDownloadService;->loadData()V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MarketServiceManager"

    const-string/jumbo v2, "start service --> action == com.alibaba.ailabs.genie.market.preinstall"

    .line 70
    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.genie.market.preinstall"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "MarketServiceManager"

    const-string/jumbo v1, "stop service.."

    .line 77
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.market.preinstall"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public unbind()V
    .locals 2

    .line 62
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
