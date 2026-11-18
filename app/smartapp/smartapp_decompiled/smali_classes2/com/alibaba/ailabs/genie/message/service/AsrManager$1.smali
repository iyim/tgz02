.class Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;
.super Ljava/lang/Object;
.source "AsrManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/service/AsrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$000()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$000()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$000()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$100(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$100(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$200(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    :goto_0
    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRResult: status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 240
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const/4 p2, 0x0

    .line 241
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_1
    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 1

    .line 221
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;->ASR_SERVICE_STATUS_DISCONNECTED:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;

    if-ne v0, p1, :cond_0

    const-string p1, "onASRServiceStatusUpdated: status: ASRServiceStatus.ASR_SERVICE_STATUS_DISCONNECTED"

    .line 222
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    .line 224
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$402(Lcom/alibaba/ailabs/genie/message/service/AsrManager;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 225
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->initASRClient()V

    :cond_0
    return-void
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onASRStatusUpdated: status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNLUResult: commandDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " commandParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNLUResult: nlpResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->getOnCurASRCommandListener()Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    if-nez p1, :cond_0

    .line 171
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const/4 p2, 0x0

    .line 172
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_0
    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "/"

    const-string p4, ""

    .line 178
    invoke-virtual {p2, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 181
    :goto_0
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->this$0:Lcom/alibaba/ailabs/genie/message/service/AsrManager;

    invoke-static {p4}, Lcom/alibaba/ailabs/genie/message/service/AsrManager;->access$300(Lcom/alibaba/ailabs/genie/message/service/AsrManager;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNLUResult command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " clientInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " s2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 185
    iget-object v0, p4, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 186
    iget-object p2, p4, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->handler:Landroid/os/Handler;

    .line 188
    new-instance v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;

    invoke-direct {v0, p0, p4, p1, p3}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;-><init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 200
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clientInfo:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in thread:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    .line 201
    iget-object p3, p4, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    if-eqz p3, :cond_4

    .line 202
    iget-object p3, p4, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    invoke-interface {p3, p1, p2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
