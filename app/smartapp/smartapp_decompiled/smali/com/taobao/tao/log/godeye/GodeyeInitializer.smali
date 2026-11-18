.class public Lcom/taobao/tao/log/godeye/GodeyeInitializer;
.super Ljava/lang/Object;
.source "GodeyeInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/godeye/GodeyeInitializer$CreateInstance;
    }
.end annotation


# instance fields
.field public config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

.field enabling:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/godeye/GodeyeInitializer$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/taobao/tao/log/godeye/GodeyeInitializer;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/tao/log/godeye/GodeyeInitializer;
    .locals 2

    const-class v0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    monitor-enter v0

    .line 49
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/log/godeye/GodeyeInitializer$CreateInstance;->access$100()Lcom/taobao/tao/log/godeye/GodeyeInitializer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 79
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 82
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 84
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 85
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public handleRemoteCommand(Lcom/taobao/android/tlog/protocol/model/GodeyeInfo;)Z
    .locals 1

    .line 110
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->handleRemoteCommand(Lcom/taobao/android/tlog/protocol/model/GodeyeInfo;)Z

    move-result p1

    return p1
.end method

.method public init(Landroid/app/Application;Lcom/taobao/tao/log/godeye/GodeyeConfig;)V
    .locals 4

    if-nez p2, :cond_0

    .line 59
    new-instance p2, Lcom/taobao/tao/log/godeye/GodeyeConfig;

    invoke-direct {p2}, Lcom/taobao/tao/log/godeye/GodeyeConfig;-><init>()V

    .line 61
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/tao/log/godeye/GodeyeConfig;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->enabling:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iput-object p2, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    .line 65
    iget-object p2, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    iget-object p2, p2, Lcom/taobao/tao/log/godeye/GodeyeConfig;->appVersion:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    iget-object v0, v0, Lcom/taobao/tao/log/godeye/GodeyeConfig;->packageTag:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    iget-object v1, v1, Lcom/taobao/tao/log/godeye/GodeyeConfig;->appId:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/tao/log/godeye/GodeyeInitializer;->config:Lcom/taobao/tao/log/godeye/GodeyeConfig;

    iget-object v3, v3, Lcom/taobao/tao/log/godeye/GodeyeConfig;->utdid:Ljava/lang/String;

    iput-object v3, v2, Lcom/taobao/tao/log/godeye/core/control/Godeye;->utdid:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v2

    invoke-virtual {v2, p1, v1, p2}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->initialize(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->setBuildId(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAccurateBootFinished(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeJointPointCenter()Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    move-result-object p1

    const-string v0, "event.launchFinished"

    invoke-virtual {p1, v0}, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;->invokeCustomEventJointPointHandlersIfExist(Ljava/lang/String;)V

    return-void
.end method

.method public registGodEyeAppListener(Lcom/taobao/tao/log/godeye/core/GodEyeAppListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v0

    iput-object p1, v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->godEyeAppListener:Lcom/taobao/tao/log/godeye/core/GodEyeAppListener;

    :cond_0
    return-void
.end method

.method public registGodEyeReponse(Ljava/lang/String;Lcom/taobao/tao/log/godeye/core/GodEyeReponse;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 100
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v0

    iget-object v0, v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->godEyeReponses:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
