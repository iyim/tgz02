.class public Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;
.super Landroid/app/Service;
.source "GenieManageServerService.java"


# static fields
.field public static final ACTION_BIND_USR:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.BINDUSER"

.field private static final BROADCAST_SAVER_NAME:Ljava/lang/String; = "ACTION_SCREEN_SAVER"

.field private static final DREAM_EXIT:I = 0x0

.field private static final DREAM_START:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMemoryGuardReceiver:Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const-class v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;-><init>(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)Landroid/content/ServiceConnection;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private acquirePartialWakeLock()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 188
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NativeService"

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string v1, "acquirePartialWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private releasePartialWakeLock()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string v1, "releasePartialWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private serviceAlive(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "activity"

    .line 213
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0x64

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 218
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 219
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private showNotification()V
    .locals 4

    .line 168
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string v1, "GenieManageServerService showNotification..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "genie_service_monitor"

    .line 171
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "monitor_notify"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 175
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 176
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerImpl;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Andromeda"

    const-string v1, "############# register service mtop222 #############"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string v1, "GenieManageServerService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->acquirePartialWakeLock()V

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    new-instance v1, Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;

    invoke-direct {v1}, Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mMemoryGuardReceiver:Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;

    .line 57
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mMemoryGuardReceiver:Lcom/alibaba/ailabs/comm/memory/MemoryGuardReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 153
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->releasePartialWakeLock()V

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mUnBindReceiver:Lcom/alibaba/ailabs/genie/smartapp/receiver/UnBindReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string p2, "GenieManageServerService:onStartCommand,begin bind asr service"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->showNotification()V

    :try_start_0
    const-string p1, "com.alibaba.ailabs.geniesdk.NativeService"

    .line 99
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->serviceAlive(Ljava/lang/String;)Z

    move-result p1

    .line 100
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "asrServiceAlive,is alive? = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 103
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->TAG:Ljava/lang/String;

    const-string p2, "asrServiceAlive is not start,now start"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.yunos.tv.alitvasr.service"

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.alibaba.ailabs.genie.smartapp"

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 p3, 0x40

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
