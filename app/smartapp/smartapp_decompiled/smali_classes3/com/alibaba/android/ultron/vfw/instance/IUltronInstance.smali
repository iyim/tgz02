.class public interface abstract Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;
.super Ljava/lang/Object;
.source "IUltronInstance.java"


# virtual methods
.method public abstract getBizName()Ljava/lang/String;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;
.end method

.method public abstract getEventHandler()Lcom/alibaba/android/ultron/event/base/UltronEventHandler;
.end method

.method public abstract getExtraMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMessageManager()Lcom/taobao/android/ultron/message/MessageManager;
.end method

.method public abstract getUtParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract hideLoading()V
.end method

.method public abstract refreshComponents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/taobao/android/ultron/common/model/IDMComponent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshCurrentContainer()V
.end method

.method public abstract respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;)V
.end method

.method public abstract respondToLinkage(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
.end method

.method public abstract setUtParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showLoading(Ljava/lang/String;)V
.end method
