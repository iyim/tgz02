.class public Lcom/alibaba/ailabs/geniesdk/NativeService;
.super Landroid/app/Service;
.source "NativeService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final ACTION_AUTOTEST:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.autotest"

.field static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field private static final ACTION_TEST:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.test"

.field private static final ASR_SERVER_ACTION:Ljava/lang/String; = "com.yunos.tv.alitvasr.service"

.field public static final LOW_BATTERY_ACTION:Ljava/lang/String; = "com.alibab.ailabs.genie.assist.BATTERY_LOW"

.field public static final LOW_BATTERY_LEVEL:Ljava/lang/String; = "low_level_key"

.field private static final MSG_RETRY_NETWORK_STATUS:I = 0x0

.field private static final MUTE_CHANGE_ACTION:Ljava/lang/String; = "android.media.STREAM_MUTE_CHANGED_ACTION"

.field private static final MUTE_CHANGE_KEY:Ljava/lang/String; = "android.media.EXTRA_STREAM_VOLUME_MUTED"

.field private static final RETRY_NETWORK_TIMEOUT:I = 0x7530

.field static final TAG:Ljava/lang/String; = "NativeService"


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiStatusData:Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/NativeService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/geniesdk/NativeService$1;-><init>(Lcom/alibaba/ailabs/geniesdk/NativeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 330
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/NativeService$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/geniesdk/NativeService$2;-><init>(Lcom/alibaba/ailabs/geniesdk/NativeService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/NativeService;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->notifyWifiStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private acquirePartialWakeLock()V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 276
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NativeService"

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "acquirePartialWakeLock"

    .line 280
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private notifyWifiStatus()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 302
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getNetWorkStatus(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 303
    :try_start_1
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v4

    if-eqz v3, :cond_0

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWifiStatusData:Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->isSame(Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_1

    .line 308
    :try_start_2
    iput-object v3, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWifiStatusData:Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;

    .line 309
    invoke-virtual {v4}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object v0

    const/16 v4, 0x65

    invoke-virtual {v0, v4, v3, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x1

    goto :goto_2

    .line 312
    :cond_0
    :try_start_3
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWifiStatusData:Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    const/4 v0, 0x0

    .line 314
    :goto_0
    :try_start_4
    invoke-static {p0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->isValid()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    :catch_1
    move-exception v4

    move-object v7, v4

    move v4, v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v4, 0x0

    goto :goto_2

    :catch_3
    move-exception v3

    const/4 v4, 0x0

    move-object v7, v3

    move-object v3, v0

    :goto_1
    move-object v0, v7

    .line 317
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    .line 319
    :goto_3
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v2, :cond_3

    .line 321
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWifiStatus: needRetry = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", wifiData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    .line 326
    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/status/StatusModel$WifiStatusData;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_4
    const-string v0, ""

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeService"

    .line 324
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parserAutoTestCmd(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    const-string v0, "onStartCommand success cmd = "

    const-string v1, "cmd"

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return-object v3

    .line 94
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 103
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    return-object v3
.end method

.method private releasePartialWakeLock()V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "NativeService"

    const-string v1, "releasePartialWakeLock"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->notifyWifiStatus()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 507
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.yunos.tv.alitvasr.service"

    .line 509
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 510
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 512
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getClientManager()Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->getIAliTVASR()Lcom/yunos/tv/alitvasr/IAliTVASR$Stub;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 200
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v1, "NativeService"

    const-string v2, "HQN. NativeService onCreate."

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    .line 208
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 211
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 212
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 213
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 216
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 217
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 218
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.alibab.ailabs.genie.assist.BATTERY_LOW"

    .line 219
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 230
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 231
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    .line 232
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 235
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    .line 244
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    .line 245
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 249
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    .line 250
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 251
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 252
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    .line 253
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    .line 254
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/geniesdk/NativeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v2}, Lcom/alibaba/ailabs/geniesdk/NativeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v3}, Lcom/alibaba/ailabs/geniesdk/NativeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->acquirePartialWakeLock()V

    .line 264
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    .line 265
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->notifyWifiStatus()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 522
    invoke-direct {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->releasePartialWakeLock()V

    .line 523
    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-string p2, "y"

    const-string p3, "x"

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.alibaba.ailabs.genie.assistant.autotest"

    .line 127
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "onStartCommand cmd = "

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    const-string p2, "persist.adb.root"

    .line 128
    invoke-static {p2}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "persist.sys.adb.root"

    .line 129
    invoke-static {p3}, Lcom/alibaba/ailabs/geniesdk/util/SdkUtil;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "1"

    .line 132
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 134
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/NativeService;->parserAutoTestCmd(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 138
    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->executeAutoTestCmd(Ljava/lang/String;)V

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    const-string v1, "com.alibaba.ailabs.genie.assistant.test"

    .line 146
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    :try_start_1
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/geniesdk/NativeService;->parserAutoTestCmd(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cmd"

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "simulateEvent"

    .line 152
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "code"

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 154
    invoke-virtual {v0, p3, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    .line 155
    invoke-virtual {v0, p2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 157
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getSystemEventProcessor()Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 159
    new-instance v9, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {v9}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    .line 161
    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setCode(I)V

    .line 162
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    invoke-virtual {v1, p3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v1, p2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 166
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setData(Ljava/lang/String;)V

    .line 168
    invoke-interface {v0, v9}, Lcom/alibaba/ailabs/agui/event/OnMmiEventCallback;->onDispatchEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    goto :goto_1

    :cond_3
    const-string p2, "mouseEvent"

    .line 170
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 171
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "business"

    const-string v0, "gesture"

    .line 173
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "mode"

    .line 174
    invoke-virtual {p2, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "gesture_type"

    const-string v0, "static_gesture"

    .line 175
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    .line 177
    invoke-virtual {p3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 178
    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    new-instance p3, Lcom/alibaba/ailabs/agui/event/MmiEvent;

    invoke-direct {p3}, Lcom/alibaba/ailabs/agui/event/MmiEvent;-><init>()V

    const v0, 0x111d4

    .line 181
    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setCode(I)V

    .line 182
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/alibaba/ailabs/agui/event/MmiEvent;->setData(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEvent(Lcom/alibaba/ailabs/agui/event/MmiEvent;)Lcom/alibaba/ailabs/agui/event/MmiEventResponse;

    .line 187
    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return v4
.end method
