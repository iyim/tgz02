.class public interface abstract Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;
.super Ljava/lang/Object;
.source "IBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/geniesdk/ui/IBaseView$GenieTextType;,
        Lcom/alibaba/ailabs/geniesdk/ui/IBaseView$NotifyType;
    }
.end annotation


# virtual methods
.method public abstract fullDuplexCurPageInBlackList()Z
.end method

.method public abstract hideUi(Z)V
.end method

.method public abstract isUiShowing()Z
.end method

.method public abstract onNotify(ILjava/lang/Object;II)V
.end method

.method public abstract onPretreatedResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)I
.end method

.method public abstract onRecognizeResult(ILcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;)V
.end method

.method public abstract onRecordStart(I)V
.end method

.method public abstract onRecordStop(I)V
.end method

.method public abstract onStreaming(ILjava/lang/String;Z)V
.end method

.method public abstract onVolume(II)V
.end method

.method public abstract setFullDuplexDialogRenew(I)V
.end method

.method public abstract showGestureAnimation(ILjava/lang/String;)V
.end method

.method public abstract showUi(Z)V
.end method

.method public abstract updateGenieText(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGenieTextByPageName(ILjava/lang/String;)V
.end method
