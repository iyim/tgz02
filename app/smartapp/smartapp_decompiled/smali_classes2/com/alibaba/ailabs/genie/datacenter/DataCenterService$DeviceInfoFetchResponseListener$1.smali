.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener$1;
.super Ljava/lang/Object;
.source "DataCenterService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;->onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

.field final synthetic val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;Lmtopsdk/mtop/domain/BaseOutDo;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 420
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener$1;->val$baseOutDo:Lmtopsdk/mtop/domain/BaseOutDo;

    check-cast v0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponse;

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponse;->getData()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData;->getModel()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;

    move-result-object v1

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceInfoFetchResponseListener##result.getData()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataCenterService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    return-void

    .line 429
    :cond_1
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 430
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeviceInfoFetchResponseListener##result.getData().getModel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;->getPosition()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;->getUuid()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    .line 437
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    const-string v6, "city"

    .line 440
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "area"

    .line 441
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "address"

    .line 442
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v5

    :goto_0
    if-eqz v7, :cond_5

    if-nez v6, :cond_4

    goto :goto_1

    .line 447
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v6, v7

    :cond_5
    if-eqz v1, :cond_7

    if-nez v6, :cond_6

    goto :goto_2

    .line 450
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v6

    goto :goto_2

    :cond_8
    move-object v1, v5

    .line 454
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponse;->getData()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData;->getModel()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean;->getUserSetting()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 457
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;->getWakeupStyle()Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$WakeupStyleBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 459
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$WakeupStyleBean;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 463
    :cond_9
    new-instance v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;-><init>(Z)V

    .line 464
    iput-object v4, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevUuid:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 466
    iput-object v2, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevName:Ljava/lang/String;

    :cond_a
    if-eqz v3, :cond_b

    .line 469
    iput-object v3, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevPosition:Ljava/lang/String;

    :cond_b
    if-eqz v1, :cond_c

    .line 472
    iput-object v1, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mDevAddress:Ljava/lang/String;

    :cond_c
    if-eqz v5, :cond_d

    .line 475
    iput-object v5, v0, Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;->mWakeupFeedback:Ljava/lang/String;

    .line 477
    :cond_d
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DeviceInfoFetchResponseListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDeviceInfoToDB(Landroid/content/Context;Lcom/alibaba/ailabs/genie/nodisturb/DeviceDetailsInfo;Z)I

    return-void
.end method
