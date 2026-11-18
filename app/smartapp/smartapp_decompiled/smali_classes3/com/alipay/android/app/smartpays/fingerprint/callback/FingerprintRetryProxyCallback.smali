.class public abstract Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;
.super Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;
.source "FingerprintRetryProxyCallback.java"


# instance fields
.field private mRetryTimes:I

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;-><init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    .line 13
    iput-boolean p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    return-void
.end method

.method private finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 3

    .line 82
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintRetryProxyCallback::finish"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onFinish()V

    .line 84
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$1;-><init>(Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isTerminated(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)Z
    .locals 1

    .line 53
    sget-object v0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback$2;->$SwitchMap$com$alipay$android$app$smartpays$api$model$FingerprintResult$FingerprintStatus:[I

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 3

    .line 27
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTerminated=true, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FingerprintRetryProxyCallback::onCallBack"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 32
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {p0, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->isTerminated(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    .line 33
    iget v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    .line 34
    iget-boolean v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mTerminated:Z

    if-eqz v0, :cond_1

    .line 35
    invoke-virtual {p0, v1, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->mRetryTimes:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onStart()V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 41
    new-instance p1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v1, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_ING:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {p1, v1}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onRetry()V

    goto :goto_0

    .line 44
    :cond_2
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    sget-object v2, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;->RETRY_LIMIT:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 45
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onRetryLimit()V

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->finish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    :goto_0
    return-void
.end method

.method protected onFinish()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onFinish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public abstract onFinish(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;)V
.end method

.method public onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintRetryProxyCallback;->onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    return-void
.end method

.method public abstract onRetry()V
.end method

.method public abstract onRetryLimit()V
.end method

.method protected onStart()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintCanceableProxyCallback;->onStart()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public abstract onStatusChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
.end method
