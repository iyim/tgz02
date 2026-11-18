.class Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity$1;
.super Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;
.source "DownloadTipsMiniActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;->getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    const-string v0, "aed68f8b-2acd-4ad0-b354-29a1b0043ed6"

    .line 109
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSecretKey(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.contacts.downloadqr"

    .line 111
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;->setPageId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setSelectListData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/SelectListData;)V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;->setCanExitSkill(Z)V

    return-void
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 2

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/contacts/cmd/asr/BaseASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    .line 99
    sget-object p4, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commandDomain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "command = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "commandParams = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/DownloadQrBack"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/details/DownloadTipsMiniActivity;->finish()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
