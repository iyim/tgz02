.class Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintCanceableProxyCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->registerCancelReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    const-string p2, "FingerprintCanceableProxyCallback::registerCancelReceiver"

    const-string v0, "onReceive Broadcast"

    invoke-virtual {p1, p2, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;

    new-instance p2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->COMMON_TIMEOUT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {p2, v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    return-void
.end method
