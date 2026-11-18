.class public Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;
.source "FingerprintSensorProxyCallback.java"


# static fields
.field public static final FP_SENSOR_STATUS_INTENT:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

.field public static final FP_SENSOR_STATUS_VALUE:Ljava/lang/String; = "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_VALUE"


# instance fields
.field private mSensorReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private registerSensorReceiver()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintSensorProxyCallback::registerFpSensorReceiver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;)V

    .line 80
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    iput-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onFinish()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->unregisterSensorReceiver()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->registerSensorReceiver()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected unregisterSensorReceiver()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintSensorProxyCallback::unregisterFpSensorReceiver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->mSensorReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
