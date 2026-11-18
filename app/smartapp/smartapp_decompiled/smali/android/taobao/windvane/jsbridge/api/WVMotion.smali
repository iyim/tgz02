.class public Landroid/taobao/windvane/jsbridge/api/WVMotion;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVMotion.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WVMotion"


# instance fields
.field private blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

.field private currentTime:J

.field private currentTime2:J

.field private frequency:J

.field private frequency2:J

.field private handler:Landroid/os/Handler;

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field protected mSensorListener:Landroid/hardware/SensorEventListener;

.field protected mSensorListener2:Landroid/hardware/SensorEventListener;

.field private mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

.field private sm:Landroid/hardware/SensorManager;

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    .line 54
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    const-wide/16 v1, 0x0

    .line 55
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime:J

    .line 56
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime2:J

    .line 57
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency:J

    .line 58
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency2:J

    .line 60
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 392
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVMotion$3;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 418
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener2:Landroid/hardware/SensorEventListener;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/jsbridge/api/WVMotion;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->isAlive:Z

    return p0
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency:J

    return-wide v0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime:J

    return-wide v0
.end method

.method static synthetic access$202(Landroid/taobao/windvane/jsbridge/api/WVMotion;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime:J

    return-wide p1
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVMotion;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenGyro()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency2:J

    return-wide v0
.end method

.method static synthetic access$600(Landroid/taobao/windvane/jsbridge/api/WVMotion;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime2:J

    return-wide v0
.end method

.method static synthetic access$602(Landroid/taobao/windvane/jsbridge/api/WVMotion;J)J
    .locals 0

    .line 46
    iput-wide p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime2:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/taobao/windvane/jsbridge/api/WVMotion;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenRota()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private stopListenGyro()V
    .locals 2

    .line 207
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 208
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    :cond_1
    return-void
.end method

.method private stopListenRota()V
    .locals 2

    .line 214
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 215
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener2:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    :cond_1
    return-void
.end method

.method private stopShake()V
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->stop()V

    const/4 v0, 0x0

    .line 223
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1

    const-string v0, "listeningShake"

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->listeningShake(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vibrate"

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "listenBlow"

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.RECORD_AUDIO"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;

    invoke-direct {v0, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVMotion$1;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVMotion$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 82
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "stopListenBlow"

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "listenGyro"

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->listenGyro(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "listenRotationRate"

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 96
    invoke-virtual {p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->listenRotationRate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    :catch_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/16 p1, 0x1005

    if-eq v0, p1, :cond_2

    const/16 p1, 0x1006

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz p1, :cond_1

    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_1
    return v1

    .line 164
    :cond_2
    iget-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->isAlive:Z

    if-nez p1, :cond_3

    return v1

    .line 165
    :cond_3
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    const-string v0, "pass"

    const-string v2, "1"

    .line 167
    invoke-virtual {p1, v0, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "motion.blow"

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    .line 157
    :cond_5
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopShake()V

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_6

    .line 159
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_6
    return v1
.end method

.method public declared-synchronized listenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 309
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVMotion"

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenBlow: start. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 313
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    if-eqz p2, :cond_1

    .line 314
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    .line 316
    :cond_1
    new-instance p2, Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->handler:Landroid/os/Handler;

    invoke-direct {p2, v0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    .line 317
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->start()V

    .line 319
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listenGyro(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVMotion"

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenGyro:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "frequency"

    const/16 v3, 0x64

    .line 369
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency:J

    const-string v2, "on"

    .line 370
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    :try_start_2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 379
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    :cond_1
    if-eqz p2, :cond_2

    .line 381
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime:J

    goto :goto_0

    .line 386
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenGyro()V

    .line 389
    :goto_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string v1, "WVMotion"

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate: param parse to JSON error, param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "HY_PARAM_ERR"

    .line 373
    invoke-virtual {v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listenRotationRate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 326
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVMotion"

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listenRotationRate:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "frequency"

    const/16 v3, 0x64

    .line 334
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->frequency2:J

    const-string v2, "on"

    .line 335
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :try_start_2
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 344
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    :cond_1
    if-eqz p2, :cond_2

    .line 346
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener2:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->currentTime:J

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenRota()V

    .line 354
    :goto_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string v1, "WVMotion"

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate: param parse to JSON error, param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "HY_PARAM_ERR"

    .line 338
    invoke-virtual {v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listeningShake(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-wide/16 v1, 0x1f4

    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    :try_start_1
    const-string/jumbo v1, "utf-8"

    .line 113
    invoke-static {p2, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "WVMotion"

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listeningShake: param decode error, param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x1

    .line 119
    :goto_0
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "on"

    .line 120
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "frequency"

    .line 121
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    :try_start_4
    const-string v1, "WVMotion"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listeningShake: param parse to JSON error, param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "HY_PARAM_ERR"

    .line 124
    invoke-virtual {v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :cond_0
    move-wide v6, v1

    const/4 v2, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 130
    :try_start_5
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "WVMotion"

    const-string v1, "listeningShake: isFail"

    .line 131
    invoke-static {p2, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :cond_2
    if-eqz v2, :cond_4

    :try_start_6
    const-string p2, "WVMotion"

    const-string v1, "listeningShake: start ..."

    .line 137
    invoke-static {p2, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    if-nez p2, :cond_3

    .line 139
    new-instance p2, Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    .line 141
    :cond_3
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    new-instance v1, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;

    invoke-direct {v1, p0, p1, v6, v7}, Landroid/taobao/windvane/jsbridge/api/WVMotion$MyShakeListener;-><init>(Landroid/taobao/windvane/jsbridge/api/WVMotion;Landroid/taobao/windvane/jsbridge/WVCallBackContext;J)V

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->setOnShakeListener(Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;)V

    .line 142
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_2

    :cond_4
    const-string p2, "WVMotion"

    const-string v0, "listeningShake: stop."

    .line 144
    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 146
    iput v4, p2, Landroid/os/Message;->what:I

    .line 147
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 229
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopShake()V

    .line 230
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenGyro()V

    .line 231
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVMotion;->stopListenRota()V

    .line 232
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 234
    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrator:Landroid/os/Vibrator;

    .line 236
    :cond_0
    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 237
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 257
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->pause()V

    .line 261
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    .line 264
    :cond_2
    invoke-super {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 244
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->sm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_0

    const/16 v2, 0x9

    .line 245
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->resume()V

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->start()V

    .line 253
    :cond_2
    invoke-super {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->onResume()V

    return-void
.end method

.method public declared-synchronized stopListenBlow(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVMotion"

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopListenBlow: stopped. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    if-eqz p2, :cond_1

    .line 299
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/api/BlowSensor;->stop()V

    const/4 p2, 0x0

    .line 300
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->blowSensor:Landroid/taobao/windvane/jsbridge/api/BlowSensor;

    .line 302
    :cond_1
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized vibrate(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 271
    :try_start_0
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "duration"

    const/16 v3, 0x15e

    .line 275
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p2, :cond_0

    const/16 p2, 0x15e

    .line 285
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrator:Landroid/os/Vibrator;

    .line 288
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVMotion;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    const-string p2, "WVMotion"

    const-string/jumbo v0, "vibrate: start ..."

    .line 289
    invoke-static {p2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string v1, "WVMotion"

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate: param parse to JSON error, param="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "HY_PARAM_ERR"

    .line 278
    invoke-virtual {v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
