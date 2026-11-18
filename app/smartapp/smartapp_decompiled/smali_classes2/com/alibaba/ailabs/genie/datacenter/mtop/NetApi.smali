.class public final Lcom/alibaba/ailabs/genie/datacenter/mtop/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# static fields
.field public static final API_SET_USER_DEVICE_SETTING:I = 0x10c8e4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "userId"

    .line 38
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    .line 39
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 40
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;)V
    .locals 6

    .line 126
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;-><init>()V

    .line 127
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getDndModeInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetRequest;-><init>()V

    .line 76
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponse;

    move-object v3, p1

    move v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetRequest;-><init>()V

    .line 102
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static setUserDeviceSetting(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 138
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;-><init>()V

    .line 139
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->setKey(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, p4}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->setValue(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "setUserDeviceSetting:"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingResponse;

    move-object v3, p1

    move v4, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static testRequest(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 61
    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/DesktopGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/DesktopGetRequest;-><init>()V

    .line 62
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/DesktopGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/DesktopGetRequest;->setDeviceInfo(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/DesktopGetResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static uploadDndModeInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 89
    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeUpdateRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeUpdateRequest;-><init>()V

    .line 90
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeUpdateRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeUpdateRequest;->setDndModeDTO(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeUpdateResponse;

    move-object v3, p1

    move v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static uploadTtsInfo(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 113
    new-instance v1, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateRequest;-><init>()V

    .line 114
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, p3}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateRequest;->setValue(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, p5}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateRequest;->setKey(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceUserSettingElemUpdateResponse;

    move-object v3, p1

    move v4, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
