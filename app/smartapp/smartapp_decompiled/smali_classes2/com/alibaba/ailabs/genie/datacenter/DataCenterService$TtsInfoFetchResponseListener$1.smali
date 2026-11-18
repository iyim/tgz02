.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;
.super Ljava/lang/Object;
.source "DataCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;->onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

.field final synthetic val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;Lmtopsdk/mtop/domain/BaseOutDo;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    check-cast v0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponse;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponse;->getData()Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;->getModel()Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TtsInfoFetchResponseListener##result.getData()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->updateTTSInfo(Landroid/content/Context;Ljava/util/ArrayList;)I

    .line 367
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/tts/DataCenterModeAPI;->getCurrentTTS(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, v0, Lcom/alibaba/ailabs/genie/tts/model/TTSParameters;->voiceTemplateId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->addPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/SystemPropertiesUtil;->setTTSToneProp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
