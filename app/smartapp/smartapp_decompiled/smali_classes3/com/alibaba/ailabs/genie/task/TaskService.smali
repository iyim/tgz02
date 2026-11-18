.class public Lcom/alibaba/ailabs/genie/task/TaskService;
.super Landroid/app/Service;
.source "TaskService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;
    }
.end annotation


# static fields
.field private static mApp:Lcom/alibaba/ailabs/genie/task/TaskService;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

.field private workHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/alibaba/ailabs/genie/task/TaskService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/TaskService$1;-><init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->runTick()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/task/TaskService;Landroid/content/Intent;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/task/TaskService;->taskReceive(Landroid/content/Intent;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->initReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->initInstallReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->tasksCreate()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/genie/task/TaskService;->mApp:Lcom/alibaba/ailabs/genie/task/TaskService;

    return-object v0
.end method

.method private initInstallReceiver()V
    .locals 4

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    new-instance v1, Lcom/alibaba/ailabs/genie/task/TaskService$3;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/TaskService$3;-><init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    .line 109
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/alibaba/ailabs/genie/task/TaskService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private initReceiver()V
    .locals 4

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "stand_by_setting_changed"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "aicare.enable.change"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ailabs.genie.ACTION_STANDBY_SET"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.ailabs.genie.ACTION_STANDBY_CANCEL"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "is_screen_on"

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.game.center.DESKTOP_START"

    .line 88
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.alibaba.ailabs.game.center.DESKTOP_STOP"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/alibaba/ailabs/genie/task/TaskService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private initTask()V
    .locals 2

    .line 125
    new-instance v0, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;-><init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    const-class v1, Lcom/alibaba/ailabs/genie/task/aicare/AiCareTask;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->addTask(Ljava/lang/Class;)Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/task/standby/StandByTask;

    .line 127
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->addTask(Ljava/lang/Class;)Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    .line 128
    sget-boolean v0, Lcom/alibaba/ailabs/genie/task/TaskApplication;->disableVideoRecommend:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    const-class v1, Lcom/alibaba/ailabs/genie/task/video/VideoTask;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->addTask(Ljava/lang/Class;)Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    :cond_0
    return-void
.end method

.method private runTick()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->runTick()V

    return-void
.end method

.method private taskDestroy()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->destroy()V

    return-void
.end method

.method private taskReceive(Landroid/content/Intent;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->receive(Landroid/content/Intent;)V

    return-void
.end method

.method private tasksCreate()V
    .locals 2

    const-string v0, "TaskService-Service"

    const-string v1, "tasksCreate"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->create(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getWorkHandler()Landroid/os/Handler;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->workHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "GTask"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 115
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->workHandler:Landroid/os/Handler;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->workHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 5

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    sput-object p0, Lcom/alibaba/ailabs/genie/task/TaskService;->mApp:Lcom/alibaba/ailabs/genie/task/TaskService;

    .line 59
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->initTask()V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->getWorkHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/task/TaskService$2;

    invoke-direct {v3, p0}, Lcom/alibaba/ailabs/genie/task/TaskService$2;-><init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate end("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/TaskService;->taskDestroy()V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->clear()V

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/TaskService;->tasks:Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
