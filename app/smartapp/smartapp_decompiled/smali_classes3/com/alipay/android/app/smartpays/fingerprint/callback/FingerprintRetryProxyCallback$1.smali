.class Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;
.super Ljava/lang/Object;
.source "FingerprintRetryProxyCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

.field final synthetic val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iput-object p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 89
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/smartpays/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    iget-object v1, v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v0, v0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;

    iget-object v0, v0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;->val$result:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    :cond_0
    return-void
.end method
