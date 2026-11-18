.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;
.super Ljava/lang/Object;
.source "OnASRCommandListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;,
        Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRListenerType;
    }
.end annotation


# virtual methods
.method public abstract asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
.end method

.method public abstract getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end method

.method public abstract onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
.end method

.method public abstract onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
.end method

.method public abstract onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end method
