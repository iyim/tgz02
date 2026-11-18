.class public Lcom/alibaba/ailabs/systemui/StatusBarService;
.super Ljava/lang/Object;
.source "StatusBarService.java"


# static fields
.field private static final CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final DND_MODE_INFO_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

.field private static final TAG:Ljava/lang/String; = "com.alibaba.ailabs.systemui.StatusBarService"

.field private static instance:Lcom/alibaba/ailabs/systemui/StatusBarService;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mBatInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatterStatus:Landroid/content/Intent;

.field private mBatteryCharging:Z

.field private mBatteryHasRead:Z

.field private mBlueHasRead:Z

.field mBlueStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentBatteryLevel:F

.field private mCurrentVolume:I

.field private mEyeMode:Z

.field private mEyeModeHasRead:Z

.field mEyeYieldOpenContentObserver:Landroid/database/ContentObserver;

.field private mMainHandler:Landroid/os/Handler;

.field private mStoped:Z

.field private mTimeHasRead:Z

.field private mTimeString:Ljava/lang/String;

.field private mTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field private mVolumeHasRead:Z

.field private mWifiEnable:Z

.field private mWifiHasRead:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRssi:I

.field service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeString:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 52
    iput v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentVolume:I

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->service:Ljava/util/concurrent/ExecutorService;

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/systemui/StatusBarService$1;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContentObserver:Landroid/database/ContentObserver;

    .line 74
    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService$2;

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/ailabs/systemui/StatusBarService$2;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeYieldOpenContentObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$3;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$4;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    .line 139
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->init()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateDnd()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/systemui/StatusBarService;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/systemui/StatusBarService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiEnable:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/systemui/StatusBarService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiRssi:I

    return p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/systemui/StatusBarService;)F
    .locals 0

    .line 36
    iget p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentBatteryLevel:F

    return p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/systemui/StatusBarService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryCharging:Z

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateEyeMode()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/systemui/StatusBarService;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueHasRead:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/systemui/StatusBarService;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBluetoothState(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->startTimer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->stopTimer()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/systemui/StatusBarService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateState()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/systemui/StatusBarService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeMode:Z

    return p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/systemui/StatusBarService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentVolume:I

    return p0
.end method

.method private checkWifi()Z
    .locals 3

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mConnectManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 399
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "checkWifi \u5f02\u5e38"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/systemui/StatusBarService;
    .locals 1

    .line 145
    sget-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->instance:Lcom/alibaba/ailabs/systemui/StatusBarService;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/alibaba/ailabs/systemui/StatusBarService;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->instance:Lcom/alibaba/ailabs/systemui/StatusBarService;

    .line 148
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->instance:Lcom/alibaba/ailabs/systemui/StatusBarService;

    return-object p0
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mAudioManager:Landroid/media/AudioManager;

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mConnectManager:Landroid/net/ConnectivityManager;

    .line 158
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    .line 159
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateTime()V

    .line 160
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->startTimer()V

    .line 161
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->registerBlueStateReceiver()V

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mStoped:Z

    .line 163
    sput-object p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->instance:Lcom/alibaba/ailabs/systemui/StatusBarService;

    .line 165
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/childmode/ChildModeApi;->URI_EYE_YIELD_MODE:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeYieldOpenContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 166
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/dnd_mode_info"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBlue()V

    .line 180
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateEyeMode()V

    .line 181
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateDnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 183
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "\u72b6\u6001\u680f\u670d\u52a1\u521d\u59cb\u5316\u5f02\u5e38\u4e86"

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private realUpdateBattery()V
    .locals 2

    .line 446
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryHasRead:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentBatteryLevel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$11;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$11;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private realUpdateEyeMode()V
    .locals 2

    .line 292
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeModeHasRead:Z

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$7;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$7;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private realUpdateTime()V
    .locals 2

    .line 338
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeHasRead:Z

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$9;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$9;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private realUpdateVolumeStatus()V
    .locals 2

    .line 316
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mVolumeHasRead:Z

    if-nez v0, :cond_0

    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$8;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$8;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private realUpdateWifi()V
    .locals 2

    .line 408
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiHasRead:Z

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$10;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$10;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private registerBlueStateReceiver()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 229
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private startTimer()V
    .locals 8

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 238
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/alibaba/ailabs/systemui/StatusBarService$5;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/systemui/StatusBarService$5;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopTimer()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimer:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimer:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    return-void
.end method

.method private updateBatteryStatus()V
    .locals 8

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatterStatus:Landroid/content/Intent;

    .line 423
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatterStatus:Landroid/content/Intent;

    const/4 v1, -0x1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 426
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatterStatus:Landroid/content/Intent;

    const-string v4, "level"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 427
    iget-object v4, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatterStatus:Landroid/content/Intent;

    const-string v5, "scale"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v4, v4, v3

    .line 431
    sget-object v5, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCharging:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",batteryPct:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", level:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", scale: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iput-boolean v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryHasRead:Z

    .line 438
    iput v4, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentBatteryLevel:F

    .line 439
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryCharging:Z

    .line 440
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateBattery()V

    return-void
.end method

.method private updateBlue()V
    .locals 4

    .line 189
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueHasRead:Z

    .line 192
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBluetoothState(I)V

    .line 193
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bfb\u53d6\u84dd\u7259\uff0cmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/systemui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "updateBlue \u5f02\u5e38"

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateBluetoothState(I)V
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueHasRead:Z

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/systemui/StatusBarService$12;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/systemui/StatusBarService$12;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateDnd()V
    .locals 4

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/nodisturb/DoNotDisturbModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result v0

    .line 265
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange updateDnd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/systemui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/alibaba/ailabs/systemui/StatusBarService$6;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/systemui/StatusBarService$6;-><init>(Lcom/alibaba/ailabs/systemui/StatusBarService;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 273
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "onChange updateDnd \u52ff\u6270\u6a21\u5f0f\u8bfb\u53d6\u5f02\u5e38 "

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateEyeMode()V
    .locals 2

    .line 284
    iget-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeMode:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 285
    iput-boolean v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeMode:Z

    .line 286
    iput-boolean v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeModeHasRead:Z

    .line 287
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateEyeMode()V

    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 252
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBatteryStatus()V

    .line 253
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateWifiStatus()V

    .line 254
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateTime()V

    .line 255
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateVolumeStatus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "updateState \u72b6\u6001\u680f\u5237\u65b0\u5f02\u5e38\u4e86"

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private updateTime()V
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeHasRead:Z

    .line 333
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateTime()V

    :cond_0
    return-void
.end method

.method private updateVolumeStatus()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 307
    iget v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentVolume:I

    if-eq v1, v0, :cond_0

    .line 308
    iput v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentVolume:I

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mVolumeHasRead:Z

    .line 310
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateVolumeStatus()V

    :cond_0
    return-void
.end method

.method private updateWifiStatus()V
    .locals 6

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v1, "updateWifiStatus, null"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->getInstance()Lcom/alibaba/ailabs/systemui/StatusNavManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/alibaba/ailabs/systemui/StatusNavManager;->updateWifi(ZI)V

    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->checkWifi()Z

    move-result v1

    .line 368
    sget-object v2, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 371
    sget-object v3, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiStatus, bssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 376
    sget-object v3, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiStatus, ssid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    .line 380
    sget-object v3, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateWifiStatus, speed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 384
    sget-object v2, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWifiStatus, rssi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-boolean v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiEnable:Z

    if-ne v1, v2, :cond_3

    iget v2, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiRssi:I

    if-eq v2, v0, :cond_4

    .line 386
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiEnable:Z

    .line 387
    iput v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiRssi:I

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiHasRead:Z

    .line 389
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateWifi()V

    :cond_4
    return-void
.end method


# virtual methods
.method public clearStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 476
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mVolumeHasRead:Z

    .line 477
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mVolumeHasRead:Z

    .line 478
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeHasRead:Z

    .line 479
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueHasRead:Z

    .line 480
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeModeHasRead:Z

    .line 481
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryHasRead:Z

    const/4 v1, 0x0

    .line 482
    iput v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentBatteryLevel:F

    .line 483
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiEnable:Z

    .line 484
    iput v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mWifiRssi:I

    .line 485
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatteryCharging:Z

    const-string v0, ""

    .line 486
    iput-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mTimeString:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 487
    iput v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mCurrentVolume:I

    return-void
.end method

.method public release()V
    .locals 3

    .line 205
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->clearStatus()V

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBlueStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mEyeYieldOpenContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 210
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mBatInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/StatusBarService;->mStoped:Z

    .line 212
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->stopTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v2, "release \u72b6\u6001\u680f\u670d\u52a1\u521d\u59cb\u5316\u5f02\u5e38\u4e86"

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/systemui/Log;->e(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 492
    sget-object v0, Lcom/alibaba/ailabs/systemui/StatusBarService;->TAG:Ljava/lang/String;

    const-string v1, "update"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/systemui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateEyeMode()V

    .line 494
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateTime()V

    .line 495
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateEyeMode()V

    .line 496
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateDnd()V

    .line 497
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->updateBlue()V

    .line 498
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateWifi()V

    .line 499
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateBattery()V

    .line 500
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/StatusBarService;->realUpdateVolumeStatus()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
