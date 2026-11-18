.class Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;
.super Ljava/lang/Object;
.source "FingerprintAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->getProcessAyncCallback(ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

.field final synthetic val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;ILcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iput p2, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$type:I

    iput-object p3, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 3

    .line 125
    new-instance v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;

    invoke-direct {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;-><init>()V

    .line 127
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mType:I

    .line 128
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    .line 129
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mMessage:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mData:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$200(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;I)Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mStatus:Lcom/alipay/android/app/smartpays/api/model/FingerprintResult$FingerprintStatus;

    .line 133
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 134
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 135
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mTokenId:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->this$0:Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;

    iget v1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$type:I

    iget v2, v0, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->mResult:I

    invoke-static {p1, v1, v2}, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;->access$300(Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator;II)V

    .line 139
    invoke-static {}, Lcom/alipay/android/app/smartpays/log/LogTracer;->getInstance()Lcom/alipay/android/app/smartpays/log/LogTracer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FingerprintAuthenticator::getProcessAyncCallback"

    invoke-virtual {p1, v2, v1}, Lcom/alipay/android/app/smartpays/log/LogTracer;->traceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/fingerprint/impl/FingerprintAuthenticator$3;->val$callBack:Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;

    if-eqz p1, :cond_1

    .line 141
    invoke-interface {p1, v0}, Lcom/alipay/android/app/smartpays/api/callback/IFingerprintCallback;->onCallBack(Lcom/alipay/android/app/smartpays/api/model/FingerprintResult;)V

    :cond_1
    return-void
.end method
