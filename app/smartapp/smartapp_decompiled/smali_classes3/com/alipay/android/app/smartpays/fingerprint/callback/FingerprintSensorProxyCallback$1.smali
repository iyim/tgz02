.class Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintSensorProxyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->registerSensorReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x0

    const-string v0, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_VALUE"

    .line 56
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 57
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintSensorProxyCallback::registerFpSensorReceiver"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/16 p1, 0x64

    if-eq p2, p1, :cond_1

    const/16 p1, 0x71

    if-eq p2, p1, :cond_1

    const/16 p1, 0x66

    if-eq p2, p1, :cond_1

    const/16 p1, 0x67

    goto :goto_0

    .line 64
    :cond_0
    iget-object p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;

    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_VERIFYING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p2, p1, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintSensorProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    :cond_1
    :goto_0
    return-void
.end method
