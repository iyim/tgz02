.class public interface abstract Lcom/alibaba/genie/tradepay/presenter/PayingCallback;
.super Ljava/lang/Object;
.source "PayingCallback.java"


# virtual methods
.method public abstract cancelVoicePayFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelVoicePaySuccess(Z)V
.end method

.method public abstract getVoiceCodeFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getVoiceCodeSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingVoicePrintPayCode;)V
.end method

.method public abstract queryPaystatusFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryPaystatusSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentStatus;)V
.end method

.method public abstract sendPayToPhoneFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract sendPayToPhoneSuccess()V
.end method
