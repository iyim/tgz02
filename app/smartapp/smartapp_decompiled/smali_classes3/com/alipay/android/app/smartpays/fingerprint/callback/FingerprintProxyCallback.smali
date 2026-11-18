.class public abstract Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;
.super Ljava/lang/Object;
.source "FingerprintProxyCallback.java"

# interfaces
.implements Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;


# instance fields
.field protected mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    .line 16
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->onStart()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0, p1}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0, p1}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->onFinish()V

    return-void
.end method

.method protected abstract onFinish()V
.end method

.method public onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/fingerprint/callback/FingerprintProxyCallback;->mCallback:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onProgressChanged(ZLcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    :cond_0
    return-void
.end method

.method protected abstract onStart()V
.end method
