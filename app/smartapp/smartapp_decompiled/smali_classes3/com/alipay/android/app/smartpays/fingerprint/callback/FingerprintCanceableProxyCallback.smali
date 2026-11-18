.class public Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;
.source "FingerprintCanceableProxyCallback.java"


# instance fields
.field private mCanceableReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onFinish()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onFinish()V

    .line 32
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->unregisterCancelReceiver()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onStart()V

    .line 26
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->registerCancelReceiver()V

    return-void
.end method

.method protected registerCancelReceiver()V
    .locals 3

    .line 36
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintCanceableProxyCallback::registerCancelReceiver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance v0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;)V

    .line 51
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.alipay.android.app.FINGERPRINT_VERIFY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 56
    :goto_0
    iput-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method protected unregisterCancelReceiver()V
    .locals 3

    .line 60
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "FingerprintCanceableProxyCallback::unregisterCancelReceiver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->mCanceableReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
