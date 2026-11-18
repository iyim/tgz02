.class public Landroid/taobao/windvane/jsbridge/api/ShakeListener;
.super Ljava/lang/Object;
.source "ShakeListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SPEED_THRESHOLD:I = 0xa


# instance fields
.field protected TIME_INTERVAL_THRESHOLD:J

.field private mContext:Landroid/content/Context;

.field private mLastUpdateTime:J

.field private mLastX:F

.field private mLastY:F

.field private mLastZ:F

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 27
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->TIME_INTERVAL_THRESHOLD:J

    .line 37
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {p0}, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->start()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    .line 86
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 93
    iget-wide v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastUpdateTime:J

    sub-long v4, v2, v4

    .line 94
    iget-wide v6, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->TIME_INTERVAL_THRESHOLD:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    return-void

    .line 98
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 99
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    .line 100
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    .line 103
    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    sub-float v4, v0, v4

    .line 104
    iget v5, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    sub-float v5, v1, v5

    .line 105
    iget v6, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    sub-float v6, p1, v6

    mul-float v4, v4, v4

    mul-float v5, v5, v5

    add-float/2addr v4, v5

    mul-float v6, v6, v6

    add-float/2addr v4, v6

    float-to-double v4, v4

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    .line 108
    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    if-eqz v4, :cond_2

    if-eqz v4, :cond_2

    .line 109
    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 110
    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    invoke-interface {v4}, Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;->onShake()V

    .line 114
    :cond_2
    iput-wide v2, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastUpdateTime:J

    .line 115
    iput v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastX:F

    .line 116
    iput v1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastY:F

    .line 117
    iput p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mLastZ:F

    return-void
.end method

.method public pause()V
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 67
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "ShakeListener"

    const-string/jumbo v1, "start: Accelerometer not supported"

    .line 72
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setOnShakeListener(Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;)V
    .locals 0

    .line 42
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mShakeListener:Landroid/taobao/windvane/jsbridge/api/ShakeListener$OnShakeListener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 46
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v1, "ShakeListener"

    if-nez v0, :cond_0

    const-string/jumbo v0, "start: Sensors not supported"

    .line 48
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string/jumbo v0, "start: Accelerometer not supported"

    .line 56
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/ShakeListener;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_0
    return-void
.end method
