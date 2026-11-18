.class Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;
.super Ljava/lang/Object;
.source "ASRManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/ASRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private payloadActionOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 171
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    :try_start_0
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "needReportData"

    .line 178
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "name"

    .line 180
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playMusic"

    .line 181
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 185
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "alarmId"

    .line 187
    iget-object v4, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$600(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "audioExt"

    .line 188
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "status"

    const-string v3, "play"

    .line 190
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 4

    .line 127
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$200()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$200()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 128
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$200()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V

    const-string v0, "488a7efa-40a2-4f4c-a0de-0cc95851ad9e"

    .line 129
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$300(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 134
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$400(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$500(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "ASRManager"

    if-nez v0, :cond_2

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$500(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->payloadActionOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "player"

    .line 142
    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->addContext(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report key = player payload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Report play action expceiotn ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppContextData mAppContextData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$200()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \nappContextData:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onASRStatusUpdated asrStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;->ASR_STATUS_RECORD_START:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;

    if-ne p1, v0, :cond_0

    const-string p1, "volume"

    .line 63
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 64
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$000(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;

    move-result-object p2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 67
    invoke-interface {p2}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;->onAsrWakeup()V

    :cond_0
    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 3

    .line 84
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ASRManager onNLUResult s:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s1:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " s2:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "ASRManager"

    invoke-static {v0, p4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p4, "/"

    const-string v1, ""

    .line 89
    invoke-virtual {p2, p4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 92
    :cond_0
    iget-object p4, p0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;->this$0:Lcom/alibaba/ailabs/basedomain/common/ASRManager;

    invoke-static {p4}, Lcom/alibaba/ailabs/basedomain/common/ASRManager;->access$100(Lcom/alibaba/ailabs/basedomain/common/ASRManager;)Ljava/util/HashMap;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNLUResult command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " subCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clientInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 97
    iget-object p1, p4, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p4, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;->handler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1$1;

    invoke-direct {v0, p0, p4, p2, p3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$1$1;-><init>(Lcom/alibaba/ailabs/basedomain/common/ASRManager$1;Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 112
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientInfo:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in thread:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    .line 114
    iget-object p1, p4, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;->listener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p4, Lcom/alibaba/ailabs/basedomain/common/ASRManager$ClientInfo;->listener:Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
