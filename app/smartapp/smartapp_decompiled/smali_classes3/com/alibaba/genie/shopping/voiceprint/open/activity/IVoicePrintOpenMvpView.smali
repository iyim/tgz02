.class public interface abstract Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;
.super Ljava/lang/Object;
.source "IVoicePrintOpenMvpView.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/mvp/IMvpView;


# virtual methods
.method public abstract getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getSoundPrintListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract goToAlipayPreVerifyActivity(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method

.method public abstract goToVoicePrintPayFailPage()V
.end method

.method public abstract goToVoicePrintPaySuccessPage()V
.end method

.method public abstract onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
.end method

.method public abstract onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
.end method

.method public abstract showVoicePrintFailure(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method

.method public abstract showVoicePrintPayCode(Ljava/lang/String;)V
.end method
