.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.device.info.get"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/request/MtopAlibabaAicloudTDeviceInfoGetRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
