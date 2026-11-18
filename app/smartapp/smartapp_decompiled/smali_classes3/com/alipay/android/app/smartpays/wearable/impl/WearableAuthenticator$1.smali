.class Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;
.super Ljava/lang/Object;
.source "WearableAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->initHardwearpay(Landroid/content/Context;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$1;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 3

    .line 46
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callback, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WearableAuthenticator::initHardwarePay"

    .line 46
    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
