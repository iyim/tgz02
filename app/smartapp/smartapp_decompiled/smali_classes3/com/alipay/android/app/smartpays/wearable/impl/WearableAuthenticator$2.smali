.class Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;
.super Ljava/lang/Object;
.source "WearableAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/auth/AuthenticatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->getAuthenticatorCallback()Lcom/alipay/security/mobile/auth/AuthenticatorCallback;
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

    .line 55
    iput-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    new-instance v1, Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    invoke-direct {v1}, Lcom/alipay/android/app/smartpays/api/model/WearableResult;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$002(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;Lcom/alipay/android/app/smartpays/api/model/WearableResult;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getType()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mType:I

    .line 62
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResult()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mResult:I

    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResultMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mMessage:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getData()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mData:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {v0}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$000(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)Lcom/alipay/android/app/smartpays/api/model/WearableResult;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/security/mobile/auth/message/AuthenticatorResponse;->getResgistedTokens()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/android/app/smartpays/api/model/WearableResult;->mTokenId:Ljava/lang/String;

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator$2;->this$0:Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;

    invoke-static {p1}, Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;->access$100(Lcom/alipay/android/app/smartpays/wearable/impl/WearableAuthenticator;)V

    return-void
.end method
