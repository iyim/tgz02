.class Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;
.source "VoipToPstnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 2

    .line 218
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    const-string v0, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    .line 219
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.contacts.voiptopstn"

    .line 221
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    const-string p1, "/Confirm"

    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$000(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/DeviceContacts;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->access$100(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)Lcom/alibaba/ailabs/genie/contacts/model/Contacts;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/utils/RTCUtil;->callPstn(Landroid/content/Context;Lcom/alibaba/ailabs/genie/contacts/model/Contacts;)V

    .line 212
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity$2;->this$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->finish()V

    const/4 p1, 0x0

    return-object p1
.end method
