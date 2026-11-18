.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private uuid:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.deviceInfo.setDeviceSetting"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->uuid:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->value:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->key:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoSetDeviceSettingRequest;->value:Ljava/lang/String;

    return-void
.end method
