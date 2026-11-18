.class Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseASRCommandListener;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseASRCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 4

    const-string v0, "contacts_dail"

    const-string v1, "getAppContextData"

    .line 115
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    .line 116
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 118
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v2, "com.alibaba.ailabs.genie.custom.contacts.details"

    .line 119
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "targetNickName"

    .line 123
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "targetPhoneNum"

    .line 124
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/detail/ContactDetailActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/Contacts;->getMobile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setPrivInfo(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/custom/contacts/common/base/BaseASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    const/4 p1, 0x0

    return-object p1
.end method
