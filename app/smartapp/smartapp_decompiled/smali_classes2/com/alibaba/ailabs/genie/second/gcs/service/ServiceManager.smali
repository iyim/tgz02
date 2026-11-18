.class final Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final ourInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;->ourInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;
    .locals 1

    .line 17
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;->ourInstance:Lcom/alibaba/ailabs/genie/second/gcs/service/ServiceManager;

    return-object v0
.end method


# virtual methods
.method register(Landroid/content/Context;Lcom/alibaba/ailabs/ipc/server/MultiProvider;)V
    .locals 2

    .line 25
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getInstance(Lcom/alibaba/ailabs/ipc/server/MultiProvider;Landroid/content/Context;)Lcom/alibaba/ailabs/ipc/server/MultiRouters;

    move-result-object p2

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/gcs/GCSConst;->getDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouters;->getMultiRouter(Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/server/MultiRouter;

    move-result-object p2

    .line 28
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSMtop;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 32
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GenieUTService;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/second/gcs/service/GenieUTService;

    move-result-object p1

    .line 33
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/gcs/service/GenieUTService;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/alibaba/ailabs/ipc/server/MultiRouter;->registerRemoteServer(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
