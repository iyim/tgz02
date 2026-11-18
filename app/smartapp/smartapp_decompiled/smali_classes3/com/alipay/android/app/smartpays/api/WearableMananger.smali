.class public Lcom/alipay/android/app/smartpays/api/WearableMananger;
.super Ljava/lang/Object;
.source "WearableMananger.java"


# instance fields
.field private mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    .line 24
    new-instance p1, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-direct {p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    return-void
.end method


# virtual methods
.method public initHardwarePay(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "WearableMananger::initHardwarePay"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public verifyNoPassword(Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    const-string v1, "WearableMananger::verifyNoPassword"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mAuthenticator:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    iget-object v1, p0, Lcom/alipay/android/app/smartpays/api/WearableMananger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->verifyNoPassword(Landroid/content/Context;Lcom/alipay/android/app/smartpays/api/model/WearableRequest;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object p1

    return-object p1
.end method
