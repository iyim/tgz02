.class public Lcom/alipay/security/mobile/module/http/model/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static convertFrom(Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;)Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;
    .locals 3

    .line 33
    new-instance v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;

    invoke-direct {v0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->success:Z

    iput-boolean v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->success:Z

    .line 39
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->resultCode:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->apdid:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->apdid:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->token:Ljava/lang/String;

    .line 43
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->currentTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->currentTime:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->version:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->vkeySwitch:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->vkeySwitch:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->appListVer:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->appListVer:Ljava/lang/String;

    .line 48
    iget-object p0, p0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/result/DeviceDataReportResult;->bugTrackSwitch:Ljava/lang/String;

    const-string v1, "0"

    .line 49
    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    .line 50
    iput-object v1, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->agentSwitch:Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->bugTrackSwitch:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static convertFrom(Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;)Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;
    .locals 2

    .line 11
    new-instance v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;

    invoke-direct {v0}, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getOs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->os:Ljava/lang/String;

    .line 18
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->apdid:Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getPubApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->pubApdid:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getPriApdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->priApdid:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->token:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getUmidToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->umidToken:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->version:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getLastTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->lastTime:Ljava/lang/String;

    .line 25
    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/http/model/DeviceDataRequestModel;->getDataMap()Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/alipay/tscenter/biz/rpc/vkeydfp/request/DeviceDataReportRequest;->dataMap:Ljava/util/Map;

    return-object v0
.end method
