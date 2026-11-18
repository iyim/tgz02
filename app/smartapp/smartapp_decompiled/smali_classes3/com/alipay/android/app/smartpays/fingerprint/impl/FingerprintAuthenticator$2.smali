.class Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->processAsync(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

.field final synthetic val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iput p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$type:I

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    iput-object p4, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$userId:Ljava/lang/String;

    iput p6, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$version:I

    iput-object p7, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "fpV1"

    .line 92
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget v2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$type:I

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-static {v1, v2, v3}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;

    move-result-object v1

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget-object v5, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->initHardwarePay(Landroid/content/Context;Ljava/lang/String;)I

    .line 96
    iget-object v4, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-static {v4}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$100(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;)Lcom/alipay/security/mobile/auth/IAuthenticator;

    move-result-object v4

    new-instance v5, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;

    iget v6, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$type:I

    iget v7, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$version:I

    iget-object v8, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$data:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;-><init>(IILjava/lang/String;)V

    invoke-interface {v4, v5, v1}, Lcom/alipay/security/mobile/auth/IAuthenticator;->process(Lcom/alipay/security/mobile/auth/message/AuthenticatorMessage;Lcom/alipay/security/mobile/auth/AuthenticatorCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v4

    const-string v5, "FpProcessAsyncExV1"

    invoke-virtual {v4, v0, v5, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "FpProcessAsyncV1"

    invoke-virtual {v1, v0, v3, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->tracePerf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$version:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$2;->val$data:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "type=%s, version=%s, data=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintAuthenticator::processAsync"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
