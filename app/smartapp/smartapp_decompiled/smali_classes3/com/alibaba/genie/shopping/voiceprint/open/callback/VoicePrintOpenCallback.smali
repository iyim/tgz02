.class public interface abstract Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;
.super Ljava/lang/Object;
.source "VoicePrintOpenCallback.java"


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

.method public abstract getVoicePrintCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getVoicePrintCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method

.method public abstract getVoicePrintPayCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getVoicePrintPayCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method

.method public abstract onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V
.end method

.method public abstract onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V
.end method

.method public abstract voicePrintCreateFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract voicePrintCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method

.method public abstract voicePrintPayCreateFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract voicePrintPayCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V
.end method
